from restaurant.models import Menu
from django.test import testcases

class MenuViewTest(testcases.TestCase):
    def setUp(self) -> None:
        return super().setUp()
    
    def test_getall():
        model = Menu