Com essa estrutura, a parte **assets** e **lib** são localizados na ráiz da pasta. A pasta **assets** contêm itens como images, arquivos de dados, fontes, e a pasta **lib** contêm todo o código fonte, incluindo a parte de UI (User Interface). Maiores detalhes:



- **assets/images**: The assets folder holds subfolders such as images, fonts, and configuration files.
- **lib/pages**: The pages folder holds user interface (UI) files such as logins, lists of items, charts,
and settings.
- **lib/models**: The models folder holds classes for your data such as customer information and
inventory items.
- **lib/utils**: The utils folder holds helper classes such as date calculations and data conversion.
- **lib/widgets**: The widgets folder holds different Dart files separating widgets to reuse
through the app.
- **lib/services**: The services folder holds classes that help to retrieve data from services over the
Internet. A great example is when using Google Cloud Firestore, Cloud Storage, Realtime Data-
base, Authentication, or Cloud Functions. You can retrieve data from social media accounts, data-
base servers, and so on. In Chapters 14, 15, and 16, you will learn how to use state management to
authenticate users, retrieve and sync database records from the cloud by using Cloud Firestore.
