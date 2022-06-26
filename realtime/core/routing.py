from django.urls import path

from . import consumers

websocket_urlpatterns = [
    path(r'realtime/', consumers.RealTimeConsumer.as_asgi()),
]