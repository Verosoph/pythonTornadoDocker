import tornado.ioloop
import tornado.web

import os.path

class MainHandler(tornado.web.RequestHandler):
    def get(self):
        self.render('index.html')
       

# This tells tornado where to find the static files
settings = dict( 
    template_path = os.path.join(os.path.dirname(__file__),"template"),
    static_path = os.path.join(os.path.dirname(__file__),"static")
)

# r"/" == root website adress
application = tornado.web.Application([
    (r"/",MainHandler)
],**settings)

#Start the server at a port
port = 8889



if __name__ == "__main__":
    
    print ("Server is running on 8889")
    print ("Press ctrl+c to close")
    application.listen(port)

    #TODO remove in prod
    tornado.autoreload.start()
    for dir, _, files in os.walk('static'):
        [tornado.autoreload.watch(dir + '/' + f) for f in files if not f.startswith('.')]


    tornado.ioloop.IOLoop.instance().start()

