import 'package:flutter_test/flutter_test.dart';
import 'package:reaprime/src/skin_feature/simulated_webview_device.dart';

void main() {
  group('SimulatedWebViewDevice', () {
    test('Teclast T50 Mini models physical pixels and Android density', () {
      const device = SimulatedWebViewDevice.teclastT50Mini;

      expect(device.id, 'teclast-t50-mini');
      expect(device.physicalSize.width, 1340);
      expect(device.physicalSize.height, 800);
      expect(device.webViewSurfaceSize.width, 1341);
      expect(device.webViewSurfaceSize.height, 801);
      expect(device.densityDpi, 213);
      expect(device.devicePixelRatio, 1.33125);
      expect(device.aspectRatio, 1.675);
      expect(device.viewportSize.width, 1007);
      expect(device.viewportSize.height, 602);
      expect(device.screenSize.width, 1007);
      expect(device.screenSize.height, 601);
      expect(device.platform, 'Linux aarch64');
      expect(device.maxTouchPoints, 5);
    });

    test('looks up runtime device profiles by id', () {
      expect(
        simulatedWebViewDeviceById('teclast-t50-mini'),
        SimulatedWebViewDevice.teclastT50Mini,
      );
      expect(simulatedWebViewDeviceById(null), isNull);
      expect(simulatedWebViewDeviceById('unknown'), isNull);
    });
  });
}
