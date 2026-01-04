#include <iostream>
#include <mysql.h>

using namespace std;

int main() {
    MYSQL *conn;

    conn = mysql_init(NULL);

    if (!mysql_real_connect(
            conn,
            "localhost",   // servidor
            "root",        // usuario
            "",            // contraseña
            "informatica", // ?? PON AQUÍ TU BASE DE DATOS
            3306,
            NULL,
            0)) {

        cout << "NO CONECTA: " << mysql_error(conn) << endl;
        system("pause");
        return 1;
    }

    cout << "CONECTADO A LA BASE DE DATOS CORRECTAMENTE ?" << endl;

    mysql_close(conn);
    system("pause");
    return 0;
}
