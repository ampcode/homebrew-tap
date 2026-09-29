class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790692375-ga7bdff"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790692375-ga7bdff/amp-darwin-arm64"
      sha256 "7fc1863d9de448fde0db36d5b73c551cd616088d709c9b5a9a9f2e8e17d78b15"
    else
      url "https://static.ampcode.com/cli/0.0.1790692375-ga7bdff/amp-darwin-x64"
      sha256 "6d0b109fd2ebe088bf1acc786e9ac44d8ae417758e48c77110ff5671f1c562a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790692375-ga7bdff/amp-linux-arm64"
      sha256 "8bf6c275a4aec4de0a2be209199ea086a60711b9ffba9e198728035a28356649"
    else
      url "https://static.ampcode.com/cli/0.0.1790692375-ga7bdff/amp-linux-x64"
      sha256 "361b5c0fc9b11fc9e12f591920a1cba2b96fb83ad7765c7cf39dac04c749ceb3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
