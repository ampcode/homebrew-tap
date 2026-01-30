class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769747371-g55ea5f"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769747371-g55ea5f/amp-darwin-arm64"
      sha256 "ea3cd3a275472af1b28b501aad5f9ab9b5ff0dc277bc53d85e15d8eea5b5a6e4"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769747371-g55ea5f/amp-darwin-x64"
      sha256 "7a62801a0a2290be87b2fb8616d0978b279ed51a5bdddd899bff0e377b4180ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769747371-g55ea5f/amp-linux-arm64"
      sha256 "d2034417ad7dcb57f5b8dbdb0e860bd0ed2729749064ec522b9af33742488123"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769747371-g55ea5f/amp-linux-x64"
      sha256 "7d8c4b16d0c3f032afb9af9f01e91ef8f2025a06810df73878ae28752b93ee1b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
