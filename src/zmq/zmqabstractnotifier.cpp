<<<<<<< HEAD
// Copyright (c) 2009-2019 The Bitcoin Core developers
// Copyright (c) 2014-2019 The DigiByte Core developers
=======
// Copyright (c) 2015-2019 The DigiByte Core developers
>>>>>>> 5358de127d898d4bb197e4d8dc2db4113391bb25
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <zmq/zmqabstractnotifier.h>

#include <cassert>

const int CZMQAbstractNotifier::DEFAULT_ZMQ_SNDHWM;

CZMQAbstractNotifier::~CZMQAbstractNotifier()
{
    assert(!psocket);
}

bool CZMQAbstractNotifier::NotifyBlock(const CBlockIndex * /*CBlockIndex*/)
{
    return true;
}

bool CZMQAbstractNotifier::NotifyTransaction(const CTransaction &/*transaction*/)
{
    return true;
}

bool CZMQAbstractNotifier::NotifyBlockConnect(const CBlockIndex * /*CBlockIndex*/)
{
    return true;
}

bool CZMQAbstractNotifier::NotifyBlockDisconnect(const CBlockIndex * /*CBlockIndex*/)
{
    return true;
}

bool CZMQAbstractNotifier::NotifyTransactionAcceptance(const CTransaction &/*transaction*/, uint64_t mempool_sequence)
{
    return true;
}

bool CZMQAbstractNotifier::NotifyTransactionRemoval(const CTransaction &/*transaction*/, uint64_t mempool_sequence)
{
    return true;
}
