class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777147716-gff4795"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777147716-gff4795/amp-darwin-arm64"
      sha256 "1f507fe6368be02bb99444546f05f9d7b429ef540c37f1baa7d98f331c4f884d"
    else
      url "https://static.ampcode.com/cli/0.0.1777147716-gff4795/amp-darwin-x64"
      sha256 "89bec3255dedbba62453ab67c6ee2732316e8bc5763a0c4f83a5190958bdda89"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777147716-gff4795/amp-linux-arm64"
      sha256 "972aa19bb69e0956e269badfaf9f4f161d84d883e0c0d81a4a81d4d94214eb73"
    else
      url "https://static.ampcode.com/cli/0.0.1777147716-gff4795/amp-linux-x64"
      sha256 "af46012c7faf24c8863749fcafb621b6cae15a0a1d23d6be6f3d288a8af83915"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
