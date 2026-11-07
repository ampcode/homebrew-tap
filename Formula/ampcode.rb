class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794052841-g6d76b7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794052841-g6d76b7/amp-darwin-arm64"
      sha256 "79d5aa3cda61c86d65675eb8b81daf0df85accafb5613c41feaf711b5095945b"
    else
      url "https://static.ampcode.com/cli/0.0.1794052841-g6d76b7/amp-darwin-x64"
      sha256 "153ac16b69c33320c5f9ccd8644a6aa8271ea1bd582000f6ce8ed61835f58590"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794052841-g6d76b7/amp-linux-arm64"
      sha256 "0b39e723f3e26522cd613254d16ae18d26544d433c951d4b76c9bd4a07c007ec"
    else
      url "https://static.ampcode.com/cli/0.0.1794052841-g6d76b7/amp-linux-x64"
      sha256 "cb0900597781df3f465f69cab1aea0789fda6aa397e2a0e3f28c644f840d7acb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
