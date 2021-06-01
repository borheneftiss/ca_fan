import { UI_START_LOADING, UI_STOP_LOADING ,UI_START_LOADING_BTN, UI_STOP_LOADING_BTN } from '../actionTypes';

export const uiStartLoading = () => {
    return {
        type: UI_START_LOADING
    };
};

export const uiStopLoading = () => {
    return {
        type: UI_STOP_LOADING
    };
};

export const uiStartLoadingBtn = () => {
    return {
        type: UI_START_LOADING_BTN
    };
};

export const uiStopLoadingBtn = () => {
    return {
        type: UI_STOP_LOADING_BTN
    };
};