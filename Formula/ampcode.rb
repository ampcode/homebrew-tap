class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775592527-g690066"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775592527-g690066/amp-darwin-arm64"
      sha256 "87359c9af3ea897fe21798c195f08c3380e919f93a9eb047167ed765ecb3769a"
    else
      url "https://static.ampcode.com/cli/0.0.1775592527-g690066/amp-darwin-x64"
      sha256 "a9150c09b12ba24b7a3b36d5707217e57af91c5fb0a081da50b8d512e3630261"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775592527-g690066/amp-linux-arm64"
      sha256 "56e85cabe3a7c4495a79b61a2d8f9a72d2bb9e0c1306eede49aff6539ce0dfcd"
    else
      url "https://static.ampcode.com/cli/0.0.1775592527-g690066/amp-linux-x64"
      sha256 "e9b1b212f0f88d84c3cb642d0c57950f831e3325171a1a67d660485c0daa8d42"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
