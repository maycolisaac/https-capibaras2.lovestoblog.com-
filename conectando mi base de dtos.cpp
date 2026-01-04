#include <iostream>
#include <mysql.h>

using namespace std;

int main() {
    MYSQL *conn = mysql_init(NULL);

    if (!mysql_real_connect(
        conn,
        "localhost",
        "root",
        "123456",
        "admision",
        3306,
        NULL,
        0)) {

        cout << "ERROR: " << mysql_error(conn) << endl;
        cin.get();
        return 1;
    }

    cout << "CONECTADO OK" << endl;
    cin.get();
    mysql_close(conn);
}

