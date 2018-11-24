using System;
using System.Data;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;

public class ClassFile1
{
    [Microsoft.SqlServer.Server.SqlFunction]
    public static SqlInt32 GetRandomNumber()
    {
        Random rnd = new Random();
        return rnd.Next();
    }
}
