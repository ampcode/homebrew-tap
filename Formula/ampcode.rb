class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769414488-g24cd80"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769414488-g24cd80/amp-darwin-arm64"
      sha256 "228e3025f615e0a0ec2a76a76dfddbf0600bf179daeba2f28799c90dcd9a6962"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769414488-g24cd80/amp-darwin-x64"
      sha256 "ea555b6080ae91aa4deee3202b13ff0c26b8303c81bc8f95ac3564c2c0d57f03"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769414488-g24cd80/amp-linux-arm64"
      sha256 "59161ce8293ac90bfe067bfc6f50dfc8b6894874c81fdf63b1feba860081e374"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769414488-g24cd80/amp-linux-x64"
      sha256 "8a9b0076e29cd60a014b43a84f29ce74d2eeda7ef00738586180958d8f7af0f8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
