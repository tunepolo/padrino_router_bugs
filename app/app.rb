module ImageServer
  class App < Padrino::Application
    register Padrino::Helpers
    enable :sessions

    get :text, provides: :text do
      content_type 'text/plain'
      'hello world'
    end

    get :image, provides: :jpg do
      content_type :jpg

      filepath =  File.join(Padrino.root, 'files/padrino.jpg')
      File.binread(filepath)
    end
  end
end
