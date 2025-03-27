# functions


## Folder Structure - MVVM

📦 lib/
│
├── 📂 core/  
│   ├── 📂 network/            # API client & error handling  
│   │   ├── 📄 dio_client.dart  
│   │   ├── 📄 api_exceptions.dart  
│   ├── 📂 utils/              # Shared Utilities  
│   │   ├── 📄 app_routes.dart  
│   │   ├── 📄 route_generator.dart  
│   │   ├── 📄 constants.dart  
│   │   ├── 📄 helpers.dart  
│   ├── 📂 di/                 # Dependency Injection (GetIt)  
│   │   ├── 📄 injection.dart  
│
├── 📂 data/                   # Data Layer  
│   ├── 📂 repositories/       
│   │   ├── 📄 user_repository_impl.dart  
│   │   ├── 📄 post_repository_impl.dart  
│   ├── 📂 sources/             
│   │   ├── 📂 remote/          # API Calls  
│   │   │   ├── 📄 user_api.dart  
│   │   │   ├── 📄 post_api.dart  
│   │   ├── 📂 local/           # Local Database / Shared Prefs  
│   │   │   ├── 📄 shared_prefs_helper.dart  
│   │   │   ├── 📄 user_local_db.dart  
│   │   │   ├── 📄 post_local_db.dart  
│
├── 📂 domain/                 # Business Logic Layer  
│   ├── 📂 models/             
│   │   ├── 📄 user_model.dart  
│   │   ├── 📄 post_model.dart  
│   ├── 📂 repositories/       
│   │   ├── 📄 user_repository.dart  
│   │   ├── 📄 post_repository.dart  
│   ├── 📂 usecases/           
│   │   ├── 📄 get_user_usecase.dart  
│   │   ├── 📄 get_posts_usecase.dart  
│
├── 📂 presentation/           # UI & BLoC State Management  
│   ├── 📂 screen/            
│   │   ├── 📂 call_controller/  
│   │   │   ├── 📂 call_controller_bloc/  
│   │   │   │   ├── 📄 call_controller_bloc.dart  
│   │   │   │   ├── 📄 call_controller_event.dart  
│   │   │   │   ├── 📄 call_controller_state.dart  
│   │   │   ├── 📂 widget/  
│   │   │   │   ├── 📄 call_button.dart  
│   │   │   │   ├── 📄 call_status.dart  
│   │   │   ├── 📄 call_controller.dart  
│   │   ├── 📂 dashboard/  
│   │   │   ├── 📂 dashboard_bloc/  
│   │   │   │   ├── 📄 dashboard_bloc.dart  
│   │   │   │   ├── 📄 dashboard_event.dart  
│   │   │   │   ├── 📄 dashboard_state.dart  
│   │   │   ├── 📂 widget/  
│   │   │   │   ├── 📄 dashboard_card.dart  
│   │   │   │   ├── 📄 dashboard_header.dart  
│   │   │   ├── 📄 dashboard.dart  
│
└── 📄 main.dart               # App Entry Point  

