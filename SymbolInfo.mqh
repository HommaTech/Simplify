//+------------------------------------------------------------------+
//|                                                   SymbolInfo.mqh |
//|                                   Copyright 2021, Abraão Moreira |
//|                                    https://www.abraaomoreira.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2021, Abraão Moreira"
#property link      "https://www.abraaomoreira.com"

class CSymbolInfo {
 private:
  long sumTimeOnOperation;

 public:
  CSymbolInfo :: CSymbolInfo();
  long CSymbolInfo :: TimeOnOperation();
};

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
CSymbolInfo :: CSymbolInfo() {
  sumTimeOnOperation = 0;
}

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
long CSymbolInfo :: TimeOnOperation() {
  long openTime, currentTime;

  if(PositionSelect(_Symbol)) {
    openTime = PositionGetInteger(POSITION_TIME);
    currentTime = TimeCurrent();
    sumTimeOnOperation = (currentTime - openTime);
  }
  return sumTimeOnOperation;
}
//+------------------------------------------------------------------+
