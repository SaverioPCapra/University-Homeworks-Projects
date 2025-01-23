import pandas as pd

# Source: Edhec Risk Kit

def drawdown(return_series: pd.Series):
    """
    Takes a time series of returns.
    Computes and returns a DataFrame that contains:
    - the wealth index
    - the previous peaks
    - percent drawdowns
    """
    
    wealth_index = 1000*(1+return_series).cumprod()
    previous_peaks = wealth_index.cummax()
    drawdowns = (wealth_index - previous_peaks)/previous_peaks
    return pd.DataFrame({
        "Wealth" : wealth_index,
        "Peaks" : previous_peaks,
        "Drawdown" : drawdowns
    })
