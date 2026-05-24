class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779653826-g19be90"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779653826-g19be90/amp-darwin-arm64"
      sha256 "d3cc92723d885dae726b1465c2080ff05749c5f3f02370c9a192ec9b6626a236"
    else
      url "https://static.ampcode.com/cli/0.0.1779653826-g19be90/amp-darwin-x64"
      sha256 "3ab045b0e83dda8671acc5cf486d2e480096f89faced3cb8e01103f9b30546e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779653826-g19be90/amp-linux-arm64"
      sha256 "f0bcaa0b0c5379b1fd08fc8b1dc7904abfafc0f44d8335c45f63711d29c9867b"
    else
      url "https://static.ampcode.com/cli/0.0.1779653826-g19be90/amp-linux-x64"
      sha256 "ce3af7f22e4386dbe065c984991ff09ee78e8b4f402d0ede9178faedcbc2e8ef"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
