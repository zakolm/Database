using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;

[Serializable]
[Microsoft.SqlServer.Server.SqlUserDefinedAggregate(Format.UserDefined, MaxByteSize = 8000)]
public struct Simple : IBinarySerialize
{
    private int count;

    public void Init()
    {
        count = 0;
    }

    private bool result(SqlInt32 Value)
    {
        bool flag = Value != 4 ? false : true;
        Int32 tmp = (Int32)Value;
        for (int i = 2; i < Math.Round(Math.Sqrt(tmp)); ++i)
        {
            if (tmp % i == 0)
            {
                flag = true;
                break;
            }
        }
        return !flag;
    }

    public void Accumulate(SqlInt32 Value)
    {
        if (result(Value))
            count++;
    }

    public void Merge(Simple Group)
    {
        count += Group.count;
    }

    public SqlInt32 Terminate()
    {
        return new SqlInt32(count);
    }

    #region IBinarySerialize Members

    public void Read(System.IO.BinaryReader r)
    {
        count = r.ReadInt32();
    }

    public void Write(System.IO.BinaryWriter w)
    {
        w.Write(count);
    }

    #endregion
}