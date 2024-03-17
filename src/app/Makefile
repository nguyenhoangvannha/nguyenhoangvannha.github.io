web:
	flutter build web -o ../../docs
apk:
	flutter build apk
apks:
	flutter build apk --split-per-abi
server:
	flutter run -d web-server
assets:
	fluttergen
built:
	flutter clean
	dart run build_runner watch --delete-conflicting-outputs
l10n:
	flutter gen-l10n

push-apk:
	firebase appdistribution:distribute "build/app/outputs/flutter-apk/app-release.apk" \
	--app 1:92989169508:android:deadd81a1205bd1b62e471 \
	--groups "home, public" \
 	--release-notes-file "release-notes.txt" --debug

install-dep:
	dart pub add dev:build_runner

	flutter pub add bloc
	flutter pub add flutter_bloc
	flutter pub add hydrated_bloc
	flutter pub add path_provider

	flutter pub add built_value
	flutter pub add built_collection
	dart pub add dev:build_runner
	dart pub add dev:built_value_generator

	flutter pub add go_router
	dart pub add dev:go_router_builder

	flutter pub add logger

	flutter pub add get_it
	flutter pub add injectable
	dart pub add dev:injectable_generator

	dart pub global activate flutter_gen
	dart pub add dev:build_runner
	dart pub add dev:flutter_gen_runner