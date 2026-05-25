class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779713994-g4ef406"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779713994-g4ef406/amp-darwin-arm64"
      sha256 "fbb8006ec123a4225897d00572dbf801383f3b9b842bf3bc8a9fa4740cd67366"
    else
      url "https://static.ampcode.com/cli/0.0.1779713994-g4ef406/amp-darwin-x64"
      sha256 "4ad8260eeec5f06369a1af086975a6247c1de87efe69aa6efb3bb3b7c8f557ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779713994-g4ef406/amp-linux-arm64"
      sha256 "d92c72a86ca3835e8bb56b286df5fcef778116b4dab0dcd757337a249b06b3a9"
    else
      url "https://static.ampcode.com/cli/0.0.1779713994-g4ef406/amp-linux-x64"
      sha256 "23f8f8bb819494c4887687bfd7485bf551d036b92a78f45c24e66d58a9448bac"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
