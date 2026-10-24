class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792844927-g360c96"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792844927-g360c96/amp-darwin-arm64"
      sha256 "a67661ebd1eca350857b2d2c857da9663fb18d2f170069c46e5b03e8419cda68"
    else
      url "https://static.ampcode.com/cli/0.0.1792844927-g360c96/amp-darwin-x64"
      sha256 "8b36bdb5f5db1e6c1f8d504a7aa721403699a071c15494ae0c6700e5fadaa126"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792844927-g360c96/amp-linux-arm64"
      sha256 "b506628550cf83a1fada34d85799e3d8988dd8ba0c8469d1bb825498149ab6de"
    else
      url "https://static.ampcode.com/cli/0.0.1792844927-g360c96/amp-linux-x64"
      sha256 "238b4382af5365aba7eb8caba4a8a9194423981e0fa5b5b2d7d7cc3a51b37e14"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
