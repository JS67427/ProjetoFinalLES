import MySQLdb
from django.http import HttpResponseServerError
from django.utils.deprecation import MiddlewareMixin

class DatabaseErrorMiddleware(MiddlewareMixin):
    def process_exception(self, request, exception):
        if isinstance(exception, MySQLdb.OperationalError) and "10061" in str(exception):
            return HttpResponseServerError()
        return None
