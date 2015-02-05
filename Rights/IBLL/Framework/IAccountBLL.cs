using System;
namespace Langben.IBLL
{
    public interface IAccountBLL
    {
        bool ChangePassword(string personName, string oldPassword, string newPassword);
        Langben.DAL.SysPerson ValidateUser(string userName, string password);
    }
}
