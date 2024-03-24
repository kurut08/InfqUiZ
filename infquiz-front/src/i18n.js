import i18n from "i18next";
import {initReactI18next} from "react-i18next"
import LngDetector from "i18next-browser-languagedetector"

const options = {
    order: ['querystring', 'navigator'],
    lookupQuerystring: 'lng'
}

i18n
    .use(LngDetector)
    .use(initReactI18next)
    .init({
        detection: options,
        fallbackLng: "en",
        debug: true,

        interpolation: {
            escapeValue: false,
            formatSeparator: ",",
        },
    });

export default i18n