// Module or class includes
#include <QtCore>

// Text Stream is text-codec aware
QTextStream cout(stdout, QIODevice::WriteOnly);

int main(int argc, char *argv[])
{
    // avoid compiler warnings
    Q_UNUSED(argc)
    Q_UNUSED(argv)

    QString s1("Hello");
    QString s2("Qt");

    QList<QString> list;

    //Stream into containers
    list << s1 <<s2;M

    //Java and STL like iterators
    QListIterator<QString> iter(list);

    while (iter.hasNext()) {
        cout << iter.next();
        if(iter.hasNext()){
            cout << " ";
        }
    }

    cout << "!" << endl;
}
