using System;
using System.Collections;
using System.Text;
using System.Security.Cryptography;

namespace UniqueKeyGenerator
{
    /// <summary>
    /// Summary description for Class1.
    /// </summary>
    public class UniqueKeys
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        /// 
        private const int LEN = 1000000;

        public string UsingGuid()
        {
            string result = Guid.NewGuid().ToString().GetHashCode().ToString("x");
            return result;
        }


        public string UsingTicks()
        {
            string val = DateTime.Now.Ticks.ToString("x");
            return val;
        }


        public string RNGCharacterMask()
        {
            int maxSize = 8;
            int minSize = 5;
            char[] chars = new char[62];
            string a;
            a = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
            chars = a.ToCharArray();
            int size = maxSize;
            byte[] data = new byte[1];
            RNGCryptoServiceProvider crypto = new RNGCryptoServiceProvider();
            crypto.GetNonZeroBytes(data);
            size = maxSize;
            data = new byte[size];
            crypto.GetNonZeroBytes(data);
            StringBuilder result = new StringBuilder(size);
            foreach (byte b in data)
            { result.Append(chars[b % (chars.Length - 1)]); }
            return result.ToString();
        }


        public string UsingDateTime()
        {
            return DateTime.Now.ToString().GetHashCode().ToString("x");
        }


        public Hashtable Frequency(string[] keys)
        {
            Hashtable freq = new Hashtable(LEN);

            foreach (string key in keys)
            {
                if (freq[key] == null)
                {
                    freq.Add(key, 0);
                }
                else
                {
                    freq[key] = (int)freq[key] + 1;
                }
            }
            return freq;
        }


    }
}
