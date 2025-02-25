window.addEventListener('load', function() {
  _flutter.loader.loadEntrypoint({
    onEntrypointLoaded: async function(engineInitializer) {
      const appRunner = await engineInitializer.initializeEngine({
        hostElement: document.querySelector('#flutter_target'),
        renderer: 'html'
      });
      await appRunner.runApp();
    }
  });
});
