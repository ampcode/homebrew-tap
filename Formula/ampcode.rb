class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787452178-g47c366"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787452178-g47c366/amp-darwin-arm64"
      sha256 "525ca10a19e60e0d5d2f6001281c3eb277dff373b74e4f38be6b6e1a7fa34857"
    else
      url "https://static.ampcode.com/cli/0.0.1787452178-g47c366/amp-darwin-x64"
      sha256 "c207a8cb3d287fafd65c7994269e3b9c4fb394e5ad377cda25574eabd02ee83e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787452178-g47c366/amp-linux-arm64"
      sha256 "7e713e26755eb68970bff338be62d0517240f862a64f85bef444a02c86cabc55"
    else
      url "https://static.ampcode.com/cli/0.0.1787452178-g47c366/amp-linux-x64"
      sha256 "9e5ab78b486139aec868101ebacfb6adb133eadc7b47f894c38b8017d40c4d4b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
