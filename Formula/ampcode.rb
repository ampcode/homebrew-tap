class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776731460-g98fe19"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776731460-g98fe19/amp-darwin-arm64"
      sha256 "bd6b85b86b492960ff1367ca415d6b97dde2272dd4ba20e12f484747e55e6c0c"
    else
      url "https://static.ampcode.com/cli/0.0.1776731460-g98fe19/amp-darwin-x64"
      sha256 "4ec3afdf773cb95c55fc678960de4b63c9a26583d814619ad2c81dfc5b017a06"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776731460-g98fe19/amp-linux-arm64"
      sha256 "fd9dc13016a81686b109b21ca6e849b6c755050b02dc618c1d40915e55ac21f8"
    else
      url "https://static.ampcode.com/cli/0.0.1776731460-g98fe19/amp-linux-x64"
      sha256 "83a1e7af5ab91afd758566b65ed5835667f833668eb3ecdc91d1d39d789bb08e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
