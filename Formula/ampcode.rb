class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787947269-g83b159"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787947269-g83b159/amp-darwin-arm64"
      sha256 "61d663afb9bf11a110c983ceb58e3e45435a2985e75236e8cb5042ee9324915f"
    else
      url "https://static.ampcode.com/cli/0.0.1787947269-g83b159/amp-darwin-x64"
      sha256 "e208343d12f0597745df53f363119503929a3a24959ced98c22089ec259760d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787947269-g83b159/amp-linux-arm64"
      sha256 "f54bbd2f3a9838c37e2ef6ade85a35b43a4cc2503b4005bd3c9bf728426a72da"
    else
      url "https://static.ampcode.com/cli/0.0.1787947269-g83b159/amp-linux-x64"
      sha256 "dba4ebd25547d9b8b900c2df4fd33a3762c5e1fdbc1c154f9ac9acbfd477abd6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
