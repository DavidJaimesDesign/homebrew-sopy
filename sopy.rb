# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Sopy < Formula
  desc "A CLI tool for searching Stack Overflow"
  homepage "https://github.com/DavidJaimesDesign/SearchSOpy/"
  version "1.0.0"

  url "https://github.com/DavidJaimesDesign/homebrew-sopy/archive/0.2.tar.gz"
  version "1.0.0"
  #sha256 "4cf2e80427ac4ad3581ce62e722eb17cebd6405f81095755bde2bdd88c26fc65"

  depends_on :python

  resource "docopt" do
    url "https://files.pythonhosted.org/packages/ec/6d/8ef19316f3b06c15ac648c857d18f171a65b50319f0a6c782392ad62d942/docopt-0.6.1.tar.gz"
	sha256 "71ad940a773fbc23be6093e9476ad57b2ecec446946a28d30127501f3b29aa35"
  end	  

  include Language::Python::Virtualenv

  def install
	  # ENV.deparallelize  # if your formula fails when building in parallel

    # Remove unrecognized options if warned by configure
    #system "./configure", "--disable-debug",
    #                      "--disable-dependency-tracking",
    #                      "--disable-silent-rules",
    #                      "--prefix=#{prefix}"
    ## system "cmake", ".", *std_cmake_args
    #system "make", "install" # if this fails, try separate make/make install steps
	virtualenv_install_with_resources
	libexec.install "so"
	bin.install_symlink libexec/"so" => "so"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test master`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    #system "false"
  end
end
