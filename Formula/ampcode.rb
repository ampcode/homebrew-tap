class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783612219-gdbd81b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783612219-gdbd81b/amp-darwin-arm64"
      sha256 "1b6e051c06595cb8db5bc94001aa33abe1f45d89414b864f414138548a464a8e"
    else
      url "https://static.ampcode.com/cli/0.0.1783612219-gdbd81b/amp-darwin-x64"
      sha256 "25c3bd693ba7c680d1ad0a8c7eef5db65daa339565a064ff4bf8ff75da1532db"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783612219-gdbd81b/amp-linux-arm64"
      sha256 "469908137cb7f7b4cb96c038ab6ce4046fb1c93bed4f9a205dd13a354a46d7a2"
    else
      url "https://static.ampcode.com/cli/0.0.1783612219-gdbd81b/amp-linux-x64"
      sha256 "fd2d03379458e2894af51946ed22732fca77372bf85311261f020d897a7de570"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
