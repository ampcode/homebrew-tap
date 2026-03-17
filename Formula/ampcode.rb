class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773778105-g47233f"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773778105-g47233f/amp-darwin-arm64"
      sha256 "205c6e992d7ef361480dafcbd972ef6748c6d762b2266c6f8671ff95cd5ef174"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773778105-g47233f/amp-darwin-x64"
      sha256 "88966da686cd618cb644497fa5c36e6e9062a7c98f856e595c2e64ccfd01f6bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773778105-g47233f/amp-linux-arm64"
      sha256 "f3496731eb146ff5e9a6e94fa822293b4edc109456ac257cd609a2328754afaa"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773778105-g47233f/amp-linux-x64"
      sha256 "4b08123d5055e5aa479c2fea9efbf1171ae6a1e772473765028de1fddbd24bda"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
