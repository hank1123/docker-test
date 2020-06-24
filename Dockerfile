FROM base_ncss_c:v1.0

RUN localedef -c -f UTF-8 -i zh_CN zh_CN.utf8
ENV LC_ALL zh_CN.UTF-8

COPY ./ncss_c $CODE_DIR/ncss_c/

RUN pip3 install -r $CODE_DIR/ncss_c/requirements.txt

EXPOSE 8080

CMD ["python3.5", "/opt/nsfocus/ncss_c/manage.py", "runserver", "0.0.0.0:8080"]
