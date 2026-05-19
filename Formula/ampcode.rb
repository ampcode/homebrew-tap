class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779179243-g4e6089"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779179243-g4e6089/amp-darwin-arm64"
      sha256 "4a1b292a17ddd3725fd1e4f1437d903fd33f4f2855d631a562291672d28c7707"
    else
      url "https://static.ampcode.com/cli/0.0.1779179243-g4e6089/amp-darwin-x64"
      sha256 "96fcc0bfd29a20841591c79efd9faffb3e4c6d313725b0163c333670c497118a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779179243-g4e6089/amp-linux-arm64"
      sha256 "2e95e51fd6f10c815ab04a333ded0451e35b76ca5dd5a07677ac8e93049564ad"
    else
      url "https://static.ampcode.com/cli/0.0.1779179243-g4e6089/amp-linux-x64"
      sha256 "146acea4d37acc79814dc8f9e795d6e5209a0be111617f77627b23d540c0fa4b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
