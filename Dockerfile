# docker image build -t stockcat-docker .
# docker container run --env "ALPHAVANTAGE_API_KEY=<YOUR_API_KEY>" -it stockcat-docker
FROM python
RUN git clone https://github.com/HLOverflow/StockCat.git
RUN pip install chardet==3.0.4
RUN cd StockCat && python3 setup.py install
ENTRYPOINT stock_cat intrinsic_value
