FROM java:7
#RUN wget http://mirrors.cnnic.cn/apache/ofbiz/apache-ofbiz-13.07.03.zip
#RUN echo 'downloaded'
#RUN unzip ./apache-ofbiz-13.07.03.zip
#RUN echo 'unzipped'
ADD . /ofbiz/
ENTRYPOINT ["/ofbiz/ant","build","-f","/ofbiz/build.xml"]
CMD ["start"]
RUN echo 'started'
