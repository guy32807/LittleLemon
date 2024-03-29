from django.shortcuts import render
from rest_framework import generics, viewsets
from .models import Booking, Menu
from .serializers import MenuSerializer, BookingSerializer
from rest_framework.permissions import IsAuthenticated

# Create your views here.
def index(request):
     return render(request, 'index.html', {})
 
class MenuItemView(generics.ListCreateAPIView):
     permission_classes = [IsAuthenticated]
     queryset = Menu.objects.all()
     serializer_class = MenuSerializer
     
class SingleMenuItemView(generics.RetrieveUpdateAPIView, generics.DestroyAPIView):
    queryset = Menu.objects.all()
    serializer_class = MenuSerializer
    
class BookingViewSet(viewsets.ModelViewSet):
    permission_classes = [IsAuthenticated]
    queryset = Booking.objects.all()
    serializer_class = BookingSerializer

    
