class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771084996-g05a15e"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771084996-g05a15e/amp-darwin-arm64"
      sha256 "7e2162560377778b799eed79b6ad4ac20b0614f2511e7abb084e6e1ef87ec29e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771084996-g05a15e/amp-darwin-x64"
      sha256 "e7823d5a252ced11c365c5465ed9ec721d740126f3ca00eb8d3692a2951d4912"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771084996-g05a15e/amp-linux-arm64"
      sha256 "e9a1c0ddf788cbe5b61d2664c20a5318db5c3e3b98b6e73765601ab9c9bb2ad5"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771084996-g05a15e/amp-linux-x64"
      sha256 "425354dff5f780031a4e81471509c046bd5cd858bd5ada518ce824c0ccab34bf"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
