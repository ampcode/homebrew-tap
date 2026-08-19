class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787147911-g716afa"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787147911-g716afa/amp-darwin-arm64"
      sha256 "605c2617e3cb240e5114920aa117cdc1e7e2d86856f68ac0761fc1b471b4659d"
    else
      url "https://static.ampcode.com/cli/0.0.1787147911-g716afa/amp-darwin-x64"
      sha256 "784d920a28afea676fee74ef484ae57a108623e5d0030755576ffb8c75df3d9e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787147911-g716afa/amp-linux-arm64"
      sha256 "92c173b978a88af7541182d96ed9a80379103560e103cf15b55686a7b2d8cced"
    else
      url "https://static.ampcode.com/cli/0.0.1787147911-g716afa/amp-linux-x64"
      sha256 "071a2db7a5dbd69b9a9c497382149dbe0dca92f2927494720be18209bacc6391"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
