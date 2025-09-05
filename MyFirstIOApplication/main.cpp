//CreationDate: September 1st, 2025
//LastModification: September 1st, 2025

#include <QtCore>

int main(int argc, char *argv[])
{
    Q_UNUSED(argc)
    Q_UNUSED(argv)

    QList<QStringList> data;

    //File operations
    QFile file("sample.csv");

    if(file.open(QIODevice::ReadOnly)){
            QTextStream stream(&file);

            //Loop forever macro
            forever{
            QString line = stream.readLine();
            //Test for null String 'String()'
            if(line.isNull())
                break;
            //Test for empty String 'QString("")'
            if(line.isEmpty())
                continue;

            QStringList row;

            //For each loop to iterate over containers
            foreach(const QString& cell, line.split(",")){
                row.append(cell.trimmed());
            }

            data.append(row);
        }

    }

    //No cleanup necessary
}
