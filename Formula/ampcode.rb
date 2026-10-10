class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791633643-g895a91"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791633643-g895a91/amp-darwin-arm64"
      sha256 "bd1c4cf772ade28770a649f5764c801656de218581a497bf727aaa32f80a67ab"
    else
      url "https://static.ampcode.com/cli/0.0.1791633643-g895a91/amp-darwin-x64"
      sha256 "8194083765da3b48394aa05552f8ae0873c98348900b39edf85a506c9fbfc4e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791633643-g895a91/amp-linux-arm64"
      sha256 "a4f16e7a3b2c35a50303a3effda90ac81eadd44b3aa1361c84bf4c76021279b0"
    else
      url "https://static.ampcode.com/cli/0.0.1791633643-g895a91/amp-linux-x64"
      sha256 "598aaa5f1bd73c1fe8df376d7ca308c8937322bc01f65a19f326a39708399d52"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
