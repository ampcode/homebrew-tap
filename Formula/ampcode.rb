class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777279908-g9ebba6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777279908-g9ebba6/amp-darwin-arm64"
      sha256 "f7bf2e4ba9b6c69221e82aa63aa197f2cf38a9e9c77ec72e0425fe2112176d19"
    else
      url "https://static.ampcode.com/cli/0.0.1777279908-g9ebba6/amp-darwin-x64"
      sha256 "3877998a78b1c347278c6d90e24b0a39b4c1c7bc24b9e7fb7803f711c504871f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777279908-g9ebba6/amp-linux-arm64"
      sha256 "c74e409b22c0d05fe601c5960052b98b5422a8a47fb52ba24e6892309ab2711a"
    else
      url "https://static.ampcode.com/cli/0.0.1777279908-g9ebba6/amp-linux-x64"
      sha256 "e80944bdd095e284407171f085bc2f62f77bb2d2345f2c171b08802ca6bec1db"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
