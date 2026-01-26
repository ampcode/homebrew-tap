class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769412388-g24cd80"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769412388-g24cd80/amp-darwin-arm64"
      sha256 "183d881fee809afb965a58f7a5b57b4589a749a99ec3dcbad4874447a08d4a09"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769412388-g24cd80/amp-darwin-x64"
      sha256 "c757910875da4eb451610f864d6f71af2021fb249de05dcf1c8d0943e94d2ec9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769412388-g24cd80/amp-linux-arm64"
      sha256 "ce64dabb771aa067b8b6669c78fe08f076363b16897afd54f3dc0e2b4d6f6b24"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769412388-g24cd80/amp-linux-x64"
      sha256 "7dddebbcc5ef03d383fabd10a453d5edf81021d175966d6aaab4ad4c8eb12c1a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
