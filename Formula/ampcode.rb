class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794509747-g97703e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794509747-g97703e/amp-darwin-arm64"
      sha256 "a7cff61408ae29731b4cf6fa5b7abba8e8da37986d1b9f06a5e9b3b9726964cb"
    else
      url "https://static.ampcode.com/cli/0.0.1794509747-g97703e/amp-darwin-x64"
      sha256 "2081b44a522f1a035ce59816410e914d7b29f645a5e7d5059b12fac92bfcf477"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794509747-g97703e/amp-linux-arm64"
      sha256 "b5850a1313eea731ec7c34bc1c5caa20f24b74fea25db65be762811b8d84ccc1"
    else
      url "https://static.ampcode.com/cli/0.0.1794509747-g97703e/amp-linux-x64"
      sha256 "f684cda368f7aeec551d504bab205e88b4b1bfa4ab7d14c78b149362f4729518"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
