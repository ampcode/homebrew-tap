class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789029207-gc41cb8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789029207-gc41cb8/amp-darwin-arm64"
      sha256 "3c0fb9f5ba74c86bbe593a9054f222664698e18c42817174a296182e074c0105"
    else
      url "https://static.ampcode.com/cli/0.0.1789029207-gc41cb8/amp-darwin-x64"
      sha256 "7ec42cc9629fa264376da9bbf5c2c177306e30672a76751be2ac6869a81a43df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789029207-gc41cb8/amp-linux-arm64"
      sha256 "217981f3fab6a2bc87850ec08b6654cd6c6748cc1fb9aee3aed5ad08b040237e"
    else
      url "https://static.ampcode.com/cli/0.0.1789029207-gc41cb8/amp-linux-x64"
      sha256 "efae9fa2710d6b6fc5a0d3babe57104b5563066b99e20f710e701b28322ee74f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
