class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786374525-ga6c6b7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786374525-ga6c6b7/amp-darwin-arm64"
      sha256 "83f8039bad5efb3009ab0427777d0844cf01dd4ec38327a015f467a3f48573ff"
    else
      url "https://static.ampcode.com/cli/0.0.1786374525-ga6c6b7/amp-darwin-x64"
      sha256 "0b4e2cd912459c1697f4e92c2fde0a37f293bc554af31ed00e4ff91187ce1fb4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786374525-ga6c6b7/amp-linux-arm64"
      sha256 "956304e10a819da07de22eb05ef883a35d23510904a7a55328463c7c3d9ce47f"
    else
      url "https://static.ampcode.com/cli/0.0.1786374525-ga6c6b7/amp-linux-x64"
      sha256 "925acaa156f19752999c2de5ebc80fbc80d21ebc34f1d5dd81f4ac985fd3b7d4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
