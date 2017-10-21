class Sopy < Formula
  desc "A CLI tool for searching Stack Overflow"
  homepage "https://github.com/DavidJaimesDesign/homebrew-sopy/"
  version "1.0.0"

  url "https://github.com/DavidJaimesDesign/homebrew-sopy/archive/1.0.0.tar.gz"
  sha256 "5927ce1c2d42eda44962085410d49362f1d53c0c875b4d4ac9e941aff2c58b81"

  depends_on :python

  resource "docopt" do
    url "https://files.pythonhosted.org/packages/ec/6d/8ef19316f3b06c15ac648c857d18f171a65b50319f0a6c782392ad62d942/docopt-0.6.1.tar.gz"
	sha256 "71ad940a773fbc23be6093e9476ad57b2ecec446946a28d30127501f3b29aa35"
  end	  

  include Language::Python::Virtualenv

  def install
    ENV.prepend_create_path "PYTHONPATH", libexec/"vendor/lib/python2.7/site-packages"
    %w[docopt].each do |r|
      resource(r).stage do
          system "python", *Language::Python.setup_install_args(libexec/"vendor")
      end
    end

    bin.install "so"
  end

  test do
    system bin/"so", "--version"
	assert_equal "1.0.0"
  end
end
