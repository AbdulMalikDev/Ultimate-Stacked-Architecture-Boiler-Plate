import 'package:flutter/foundation.dart';
import 'package:mockito/mockito.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../lib/app/locator.dart';

class NavigationServiceMock extends Mock implements NavigationService {}
class DialogServiceMock extends Mock implements DialogService {}
class SnackbarServiceMock extends Mock implements SnackbarService {}


NavigationService getAndRegisterNavigationServiceMock()
{
  _removeRegistrationIfExists<NavigationService>();
  var service = NavigationServiceMock();
  locator.registerSingleton<NavigationService>(service);
  return service;

}

DialogService getAndRegisterDialogServiceMock({@required bool isUserConfirmedDialog})
{
  _removeRegistrationIfExists<DialogService>();
  var service = DialogServiceMock();

  locator.registerSingleton<DialogService>(service);
  return service;
}

SnackbarService getAndRegisterSnackbarServiceMock()
{
  _removeRegistrationIfExists<SnackbarService>();
  var service = SnackbarServiceMock();

  locator.registerSingleton<SnackbarService>(service);
  return service;
}


registerService()
{
  getAndRegisterNavigationServiceMock();
  getAndRegisterDialogServiceMock(isUserConfirmedDialog: true);
  getAndRegisterSnackbarServiceMock();
}

unRegisterServices()
{
  locator.unregister<NavigationService>();
  locator.unregister<DialogService>();
  locator.unregister<SnackbarService>();
}

void _removeRegistrationIfExists<T>() {
  if(locator.isRegistered<T>())
  {
    locator.unregister<T>();
  }
}


