class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791288059-gdc93b0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791288059-gdc93b0/amp-darwin-arm64"
      sha256 "8a1be3e798aaa7039e2cff6345483bf6139e36ec04d586768cc0bb69f878174e"
    else
      url "https://static.ampcode.com/cli/0.0.1791288059-gdc93b0/amp-darwin-x64"
      sha256 "363dc59a73d7c92728e3275f6764ee91a707561b4fae8af2abfd0b067062e464"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791288059-gdc93b0/amp-linux-arm64"
      sha256 "2726038260737c89ed5a676501ddc449fa5b491e7ad84b432d03e6dff8e1973b"
    else
      url "https://static.ampcode.com/cli/0.0.1791288059-gdc93b0/amp-linux-x64"
      sha256 "40a3bb5226982ed54311c011b02a5555cb14df4b74e98d7767604a9925b59198"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
