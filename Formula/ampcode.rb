class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788350437-g1fc7b5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788350437-g1fc7b5/amp-darwin-arm64"
      sha256 "9900942fbab1f63a33d9a17deba17f47de4388de841fd4685936fd98960fd22d"
    else
      url "https://static.ampcode.com/cli/0.0.1788350437-g1fc7b5/amp-darwin-x64"
      sha256 "461b82721ea07725d92f7944e62e1914edc9beb8de0f0f0564013d98d77ecdc0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788350437-g1fc7b5/amp-linux-arm64"
      sha256 "045467232eb0b8a5d6c6b97d4a10ecfed9823d0334c2bbb7a62370135ed7e3b0"
    else
      url "https://static.ampcode.com/cli/0.0.1788350437-g1fc7b5/amp-linux-x64"
      sha256 "5d048f193b2839e832506b2790b658c714eec0f88a7b247f81863176ce33bfdf"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
