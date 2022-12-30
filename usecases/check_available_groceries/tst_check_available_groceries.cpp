#include <QtTest>
#include <QCoreApplication>

// add necessary includes here

class Usecases_check_available_groceries : public QObject
{
    Q_OBJECT

public:
    Usecases_check_available_groceries();

private Q_SLOTS:
    void test_one_or_more_grocery_items_available();

};

Usecases_check_available_groceries::Usecases_check_available_groceries()
{

}


void Usecases_check_available_groceries::test_one_or_more_grocery_items_available()
{
    // Given there is a list of available grocery items
    QFAIL("Not implemented");
    // And one or more grocery items are actually available
    QFAIL("Not implemented");
    // When I check available groceries
    QFAIL("Not implemented");
    // Then I am given the list of available grocery items
    QFAIL("Not implemented");
    // And the grocery items are ordered by name in ascending order
    QFAIL("Not implemented");

}

QTEST_MAIN(Usecases_check_available_groceries)

#include "tst_check_available_groceries.moc"
