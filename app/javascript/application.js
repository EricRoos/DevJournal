// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener("turbo:load", () => {
  if(document.getElementById('editorjs')){
    const editor = new EditorJS({
      /**
       * Id of Element that should contain Editor instance
       */
      holder: 'editorjs',
      placeholder: 'Tap here to start your note',
      tools: {
        header: Header,
        checklist: {
          class: Checklist,
          inlineToolbar: true,
        },
      }
    })
  }
});

