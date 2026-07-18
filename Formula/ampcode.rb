class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784386947-g49c6a1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784386947-g49c6a1/amp-darwin-arm64"
      sha256 "cd8c271812b9c6972151ced52596c17add64881a5ceccb7e17bafe1ae1875041"
    else
      url "https://static.ampcode.com/cli/0.0.1784386947-g49c6a1/amp-darwin-x64"
      sha256 "6bc220fa7f774e09282df5e5418de4f0a9b1506941f05782e9009eca59775db5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784386947-g49c6a1/amp-linux-arm64"
      sha256 "c7f27302837be1792cee930dc0bc5b414ccc2788af51b5a89883486ec477b2b1"
    else
      url "https://static.ampcode.com/cli/0.0.1784386947-g49c6a1/amp-linux-x64"
      sha256 "28bfd7ad1cc5e288ed051d712b2638cd1f5b0fcd84a25a611654b4237d82b692"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
