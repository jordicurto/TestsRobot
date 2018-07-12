
from robot.api import logger
from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn

def py_test():
    logger.console(u"un log en python")
    return "Aixo es el resultat des de Python"


@keyword("Una keyword per a Python")
def py_test_2():
    logger.console(u"Un altre test en python")
    return "Aixo es un altre resultat en Python"


@keyword("Llistar productes de la web X")
def llista_productes(class_name):
    selenium_lib = BuiltIn().get_library_instance("SeleniumLibrary")
    browser = selenium_lib._current_browser()
    llista = browser.find_element_by_class_name(class_name)
    prods = browser.find_elements_by_tag_name('article')
    for p in prods:
        logger.console(p)
