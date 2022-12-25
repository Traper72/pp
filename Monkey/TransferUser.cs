using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Monkey
{
    public static class TransferUser
    {
        public static int? id { get; set; }

        public static string name { get; set; }

        public static string surname { get; set; }

        public static string patronymic { get; set; }

        public static int? positionId { get; set; }

        public static string imgHref { get; set; }

        public static void Clear()
        {
            id = null;
            name = null;
            surname = null;
            patronymic = null;
            positionId = null;
            imgHref = null;
        }
    }
}
